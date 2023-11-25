#include <Python.h>

#include "rapid/RAPID.H"
#include <iostream>
#include <vector>

using namespace std;

// ================== vector parsing part ================== //

void get_vector(double vec[3], PyObject* py_vec) {
    vec[0] = PyFloat_AsDouble(PyList_GetItem(py_vec, 0));
    vec[1] = PyFloat_AsDouble(PyList_GetItem(py_vec, 1));
    vec[2] = PyFloat_AsDouble(PyList_GetItem(py_vec, 2));
}

void get_triangle(double triangle[3][3], PyObject* py_raw) {
    get_vector(triangle[0], PyList_GetItem(py_raw, 0));
    get_vector(triangle[1], PyList_GetItem(py_raw, 1));
    get_vector(triangle[2], PyList_GetItem(py_raw, 2));
}

// ==================   ================== //

bool check_col(double R_a[3][3], double T_a[3], RAPID_model* agent, double R_o[3][3], double T_o[3], RAPID_model* obstacles) 
{
    /* detect collisions */
    
    RAPID_Collide(R_a, T_a, agent, R_o, T_o, obstacles, RAPID_ALL_CONTACTS);

    return RAPID_num_contacts > 0;
}

// ================== function we will call from python ================== //

PyObject *detect_collision(PyObject* self, PyObject* args){
    RAPID_model *robot = new RAPID_model;
    RAPID_model *obstacle = new RAPID_model;
    PyObject *robot_py, *obstacle_py;

    PyArg_ParseTuple(args, "OO", &robot_py, &obstacle_py);

    double triangle[3][3];

    for (Py_ssize_t i = 0; i < PyList_Size(robot_py); ++i){
        // cout << "robot " << i << endl;
        get_triangle(triangle, PyList_GetItem(robot_py, i));
        robot -> AddTri(triangle[0], triangle[1], triangle[2], i);
    }

    for (Py_ssize_t i = 0; i < PyList_Size(obstacle_py); ++i){
        // cout << "obstacle " << i << endl;
        get_triangle(triangle, PyList_GetItem(robot_py, i));
        obstacle -> AddTri(triangle[0], triangle[1], triangle[2], i);
    }
    
    double R1[3][3], R2[3][3], T1[3], T2[3];
  
    R1[0][0] = R1[1][1] = R1[2][2] = 1.0;
    R1[0][1] = R1[1][0] = R1[2][0] = 0.0;
    R1[0][2] = R1[1][2] = R1[2][1] = 0.0;

    R2[0][0] = R2[1][1] = R2[2][2] = 1.0;
    R2[0][1] = R2[1][0] = R2[2][0] = 0.0;
    R2[0][2] = R2[1][2] = R2[2][1] = 0.0;
    
    T1[0] = 0.0;  T1[1] = 0.0; T1[2] = 0.0;
    T2[0] = 0.0;  T2[1] = 0.0; T2[2] = 0.0;

    if (check_col(R1,T1,robot,R2,T2,obstacle)){
        cout << "collision" << endl;
    } else {
        cout << "no collision" << endl;
    }
    robot -> EndModel();
    obstacle -> EndModel();

    Py_RETURN_NONE;
}

// ================== extending part ================== //

static PyMethodDef SpamMethods[] = {
    {"collision",  detect_collision, METH_VARARGS,
     "Execute a shell command."},
    {NULL, NULL, 0, NULL}        /* Sentinel */
};

static struct PyModuleDef rapidmodule = {
    PyModuleDef_HEAD_INIT,
    "rapidmodule",   /* name of module */
    NULL, 
    -1,       
    SpamMethods
};

PyMODINIT_FUNC PyInit_rapidmodule(void) {
    return PyModule_Create(&rapidmodule);
}
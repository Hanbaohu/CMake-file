
project(g2o)



file(GLOB_RECURSE  c_srcs "${LIB_G2O}/src/*.c")
file(GLOB_RECURSE  cxx_srcs "${LIB_G2O}/src/*.c??")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O3 ") #-D_PLD_

include_directories(
                    #${LIB_G2O}/inc
                    #${LIB_G2O}/src/
                    #${LIB_G2O}/src/g2o/
                    ${LIB_G2O}/src/
                    ${LIB_G2O}/src/g2o/core
                    ${LIB_G2O}/src/g2o/types
                    ${LIB_G2O}/src/g2o/stuff 
                    ${SLAM_PATH}/3rdparty/Eigen)

add_library(${PROJECT_NAME} STATIC 
"${LIB_G2O}/src/g2o/types/types_sba.h"
"${LIB_G2O}/src/g2o/types/types_six_dof_expmap.h"
"${LIB_G2O}/src/g2o/types/types_sba.cpp"
"${LIB_G2O}/src/g2o/types/types_six_dof_expmap.cpp"
"${LIB_G2O}/src/g2o/types/types_seven_dof_expmap.cpp"
"${LIB_G2O}/src/g2o/types/types_seven_dof_expmap.h"
"${LIB_G2O}/src/g2o/types/se3quat.h"
"${LIB_G2O}/src/g2o/types/se3_ops.h"
"${LIB_G2O}/src/g2o/types/se3_ops.hpp"
#core
"${LIB_G2O}/src/g2o/core/base_edge.h"
"${LIB_G2O}/src/g2o/core/base_binary_edge.h"
"${LIB_G2O}/src/g2o/core/hyper_graph_action.cpp"
"${LIB_G2O}/src/g2o/core/base_binary_edge.hpp"
"${LIB_G2O}/src/g2o/core/hyper_graph_action.h"
"${LIB_G2O}/src/g2o/core/base_multi_edge.h"           
"${LIB_G2O}/src/g2o/core/hyper_graph.cpp"
"${LIB_G2O}/src/g2o/core/base_multi_edge.hpp"         
"${LIB_G2O}/src/g2o/core/hyper_graph.h"
"${LIB_G2O}/src/g2o/core/base_unary_edge.h"          
"${LIB_G2O}/src/g2o/core/linear_solver.h"
"${LIB_G2O}/src/g2o/core/base_unary_edge.hpp"         
"${LIB_G2O}/src/g2o/core/marginal_covariance_cholesky.cpp"
"${LIB_G2O}/src/g2o/core/base_vertex.h"               
"${LIB_G2O}/src/g2o/core/marginal_covariance_cholesky.h"
"${LIB_G2O}/src/g2o/core/base_vertex.hpp"             
"${LIB_G2O}/src/g2o/core/matrix_structure.cpp"
"${LIB_G2O}/src/g2o/core/batch_stats.cpp"             
"${LIB_G2O}/src/g2o/core/matrix_structure.h"
"${LIB_G2O}/src/g2o/core/batch_stats.h"               
"${LIB_G2O}/src/g2o/core/openmp_mutex.h"
"${LIB_G2O}/src/g2o/core/block_solver.h"              
"${LIB_G2O}/src/g2o/core/block_solver.hpp"            
"${LIB_G2O}/src/g2o/core/parameter.cpp"               
"${LIB_G2O}/src/g2o/core/parameter.h"                 
"${LIB_G2O}/src/g2o/core/cache.cpp"                   
"${LIB_G2O}/src/g2o/core/cache.h"
"${LIB_G2O}/src/g2o/core/optimizable_graph.cpp"       
"${LIB_G2O}/src/g2o/core/optimizable_graph.h"         
"${LIB_G2O}/src/g2o/core/solver.cpp"                  
"${LIB_G2O}/src/g2o/core/solver.h"
"${LIB_G2O}/src/g2o/core/creators.h"                 
"${LIB_G2O}/src/g2o/core/optimization_algorithm_factory.cpp"
"${LIB_G2O}/src/g2o/core/estimate_propagator.cpp"     
"${LIB_G2O}/src/g2o/core/optimization_algorithm_factory.h"
"${LIB_G2O}/src/g2o/core/estimate_propagator.h"       
"${LIB_G2O}/src/g2o/core/factory.cpp"                 
"${LIB_G2O}/src/g2o/core/optimization_algorithm_property.h"
"${LIB_G2O}/src/g2o/core/factory.h"                   
"${LIB_G2O}/src/g2o/core/sparse_block_matrix.h"
"${LIB_G2O}/src/g2o/core/sparse_optimizer.cpp"  
"${LIB_G2O}/src/g2o/core/sparse_block_matrix.hpp"
"${LIB_G2O}/src/g2o/core/sparse_optimizer.h"
"${LIB_G2O}/src/g2o/core/hyper_dijkstra.cpp" 
"${LIB_G2O}/src/g2o/core/hyper_dijkstra.h"
"${LIB_G2O}/src/g2o/core/parameter_container.cpp"     
"${LIB_G2O}/src/g2o/core/parameter_container.h"
"${LIB_G2O}/src/g2o/core/optimization_algorithm.cpp" 
"${LIB_G2O}/src/g2o/core/optimization_algorithm.h"
"${LIB_G2O}/src/g2o/core/optimization_algorithm_with_hessian.cpp" 
"${LIB_G2O}/src/g2o/core/optimization_algorithm_with_hessian.h"
"${LIB_G2O}/src/g2o/core/optimization_algorithm_levenberg.cpp" 
"${LIB_G2O}/src/g2o/core/optimization_algorithm_levenberg.h"
"${LIB_G2O}/src/g2o/core/jacobian_workspace.cpp" 
"${LIB_G2O}/src/g2o/core/jacobian_workspace.h"
"${LIB_G2O}/src/g2o/core/robust_kernel.cpp" 
"${LIB_G2O}/src/g2o/core/robust_kernel.h"
"${LIB_G2O}/src/g2o/core/robust_kernel_factory.cpp"
"${LIB_G2O}/src/g2o/core/robust_kernel_factory.h"
"${LIB_G2O}/src/g2o/core/robust_kernel_impl.cpp" 
"${LIB_G2O}/src/g2o/core/robust_kernel_impl.h"
"${LIB_G2O}/src/g2o/core/sparse_optimizer_terminate_action.cpp"
"${LIB_G2O}/src/g2o/core/sparse_optimizer_terminate_action.h"
"${LIB_G2O}/src/g2o/core/g2o_core_api.h"
#stuff
"${LIB_G2O}/src/g2o/stuff/string_tools.h"
"${LIB_G2O}/src/g2o/stuff/color_macros.h" 
"${LIB_G2O}/src/g2o/stuff/macros.h"
"${LIB_G2O}/src/g2o/stuff/timeutil.cpp"
"${LIB_G2O}/src/g2o/stuff/misc.h"
"${LIB_G2O}/src/g2o/stuff/timeutil.h"
"${LIB_G2O}/src/g2o/stuff/os_specific.c"
"${LIB_G2O}/src/g2o/stuff/os_specific.h"
"${LIB_G2O}/src/g2o/stuff/string_tools.cpp"
"${LIB_G2O}/src/g2o/stuff/property.cpp"       
"${LIB_G2O}/src/g2o/stuff/property.h"  


)
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})


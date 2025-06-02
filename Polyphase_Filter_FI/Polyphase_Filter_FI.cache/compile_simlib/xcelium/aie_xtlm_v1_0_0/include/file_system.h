
#ifndef __FILE_SYSTEM__
#define __FILE_SYSTEM__

#include <sys/stat.h>

namespace xilinx{
    namespace filesystem{
        namespace path {
            //char preferred_separator = '/' ;
        }

        inline bool is_directory(const char * dirPath ){ 
            struct stat sb; if (stat(dirPath, &sb) == 0 && S_ISDIR(sb.st_mode)) 
                return true; return false; 
        }

        inline bool  create_directory(const std::string& pmk_dir){
            std::string command =   "mkdir -p ";
            command.append(pmk_dir);
            int error = system(command.c_str());
            return error ? false  : true;
        }
    }
}

#endif

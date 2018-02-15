/create/,/;/ { 
    if(match($0, "create ")) { 
        print "type " $3 " {"
    };  

    if(match($0, /(int) (not)/)) { 
        print "    " $1 ": Int!";
        next
    }; 

    if(match($0, /(int )/)) { 
        print "    " $1 ": Int" 
    }; 

    if(match($0, /(varchar).*(not)/)) { 
        print "    " $1 ": String!";
        next
    }; 

    if(match($0, /(varchar)/)) { 
        print "    " $1 ": String";
    }; 

    if(match($0, ";")) { 
        print "}" 
    };
}

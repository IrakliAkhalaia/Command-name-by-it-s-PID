     #!/bin/zsh

     command_name=$(ps -p "$1" -o comm= 2>/dev/null)

     if [ $# -eq 0 ]
     then
          echo "Nothing written :)"
          exit
     fi

     if [ -z "$command_name" ]
     then
          echo "Command with this PID doesn't exist.."
          exit
     fi

     echo "Command name is: "$command_name""

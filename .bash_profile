#Java aliases.
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java6='export JAVA_HOME=$JAVA_6_HOME'

#Default Java 8
export JAVA_HOME=$JAVA_8_HOME

Singleton := Object clone
Singleton clone := Singleton


SingletonTestObj1 := Singleton clone 
SingletonTestObj1 state := "sas"


SingletonTestObj2 := Singleton clone 
SingletonTestObj2 state println // prints sas because of singleton
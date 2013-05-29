package com.brisk.aspectj;

public aspect HelloWorld {

	pointcut callPointcut() : 
	      call(void com.brisk.aspectj.MyClass.foo(int, String));

	before() : callPointcut( )
	   {
		System.out.println("--Hello World");
		System.out.println("--In the advice attached to the call pointcut");
	}
}

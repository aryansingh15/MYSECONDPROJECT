    public with sharing class futureMethodNew {
    public futureMethodNew() {
        system.debug('I am in Future method constructor method');
        method1();
        method2();
        method3();
        method4();
        method5();
    }
    public void method1() {
        system.debug('I am in method 1');
    }

    public void method2() {
        system.debug('I am in method 2');
    }

    public static void method3() {
        system.debug('I am in method 3');
        public static void method9(){
            
        }
    }
    public static void method4() {
        system.debug('I am in method 4');
    }
    public static void method5() {
        system.debug('I am in method 5');
    }
    }

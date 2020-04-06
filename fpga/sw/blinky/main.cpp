#include <pawc.h>

int multiply(int a, int b){
    return a * b;
}

int main (){
    int i = 1;
    i = i + 2;
    i++;
    i++;
    i++;

    int x = multiply(i,3);
    
    
    int * uart_tx = (int *) 0xFFEEDD00;
    *uart_tx = i;   
    *uart_tx = x;


    while (true)
    {
        int x = 42;
    }
    
}
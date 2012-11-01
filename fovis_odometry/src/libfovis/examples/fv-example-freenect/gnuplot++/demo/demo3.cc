#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include "gnuplotpp.h"

using namespace std;
using namespace gnuplotpp;

int main( void ){

 gptable g(3,3);

 // cerr << g.set().str() << endl;
 // exit(1);

 g.set() << gpset( "term", "png" ) << endl 
	 << gpset( "output", "\"demo3.png\"" ) << endl;

 g.setsize( 1,1 );

 g.x.range( -5, 5 );

 for( int i=0; i<g.xsize(); i++ )
   for( int j=0; j<g.ysize(); j++ ){
      g[i][j].plotfunc() <<  "sin(" << i+1 << "*x)+" << "cos(" << j+1 << "*x)";
   }

 // cerr << g << "######" << endl;

  g.save( "demo3.gp" ).exec();
 
}

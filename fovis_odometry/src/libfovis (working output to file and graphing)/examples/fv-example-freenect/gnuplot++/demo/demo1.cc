#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include "gnuplotpp.h"

using namespace std;
using namespace gnuplotpp;

int main( void ){

 singleplot g;

 g.set("term png" );
 g.set() << gpset( "output", "\"demo1.png\"" ) << endl;

 g.x.label( "x axis" ).format( "%03.2f" ).tics(0.2).mtics(.05);
 g.y.label( "y axis" );

 g.label( "simgle plot example", coord( "graph 0.5", "graph 0.5" ) );

 g.arrow( coord( "graph 0.5", "graph 0.5" ), coord( "graph 1", "graph 1" ) );

 g.plotfile( "data.dat", 1, 2 )<< " t 'data'" << " pt 1" ;
  
 g.plotfunc( "x" ) ;

 g.save( "demo1.gp" ).exec();

}

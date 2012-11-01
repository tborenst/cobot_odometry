#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include "gnuplotpp.h"

using namespace std;
using namespace gnuplotpp;

int main( void ){

	multiplot g(3);

	g.setsize(1.5,1);

	// one example for set command -- stream style
	//   line need to be terminated
	g.buf() << gpset( "term", "png" ) << endl; 

	// another example for set command -- function style
	//   no temination of the line needed
	g.set( "output \"demo2.png\"" );
 
	// axis formatting can be done as this
	g.x.range( -5, 5 ).format( "%g" ).tics(1).label("x label");

	g.set( "multiplot" );

	// this is global label that is persistent to all graphs
	g.label( "This is global label",  coord( "graph 0.5", "0.1" ) );

	// this is local label 
	multiplot::iterator it=g.begin();
	for( ; it!=g.end() ; it++ )
		it->label() <<  "\"plot " << it-g.begin() << "\" at " << coord( "graph 0.5", "0.5" )
								<< endl;

	g[0].x.format( "%4g" );
	g[0].x.range( 0., 1. );
	//	cerr << "g[0].str(): "<< g[0].buf().str() << endl;

	for( it=g.begin(); it!=g.end() ; it++ ){
		it->buf() << gpset( "origin", coord(0.5*(it-g.begin()), 0 ) ) << endl;
		it->buf() << gpset( "size", coord(0.5,1) ) << endl;
		it->plotfunc() <<  "sin(" << it-g.begin() << "*x)+" 
									 << "cos(" << it-g.begin()+2 << "*x)";
	}

	g.postset() << gpset( "nomulti" ) << endl;

	g.save( "demo2.gp" ).exec();
 
}



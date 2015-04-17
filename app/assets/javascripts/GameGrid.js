//True = alive, False = dead.
//generation -  counts the generation we are in.
//liveCells - counts how many cells surrounding a cell
//    are alive. We don't care how many surrounding cells are dead.
var generation;
var liveCells;
var rows;
var columns;
var currGrid[rows][columns];
var nextGrid[rows][columns];

function traverse() 
{
  for(var i = 0; i < rows; i++) 
  {
    for(var j = 0; j < columns; j++) 
    {
      liveCells = 0;
        //Checks for corners, only 3 cells need to be verified as 
        //alive or dead.
        if((i == 0 && j == 0) || (i == 0 && j == columns-1) ||
        (i == rows-1 && j == 0) || (i == rows-1 && j == columns-1))
	{
        
        }
	//Checks perimeter objects, only 6 cells need to be verified as 	//alive or dead.
        else if(i == 0 || j == 0 || i = rows-1 || j == columns-1)
	{
	
	}
	//Checks all 9 surrounding cells
	else 
	{
          for(var x = i-1; x <= i+1; x++)
          {
	    for(var y = j-1; y <= j+1; y++)
	    {
	      if(currGrid[x][y] == true)
	      {
                liveCells++;
              }
	    }
	  }
	}   
        
	if(currGrid[i][j] == true)
	{
          if(liveCells == 2 || liveCells = 3)
          {
            nextGrid[i][j] = true;
          }
          else
          {
            nextGrid[i][j] = false;
          }
	}
        else 
        {
	  //dead AND surrounded by EXACTLY 3 live
          if(liveCells == 3)
          {
            nextGrid[i][j] = true;
          }
	  else 
	  {
            nextGrid[i][j] = false;
          }
        }
      }
    }
  }
}

function nextGen()
{
 currGrid = nextGrid;
 generations++;
}

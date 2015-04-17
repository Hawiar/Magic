//True = alive, False = dead.
//generation -  counts the generation we are in.
//liveCells  -  counts how many cells surrounding a cell
//              are alive. We don't care how many surrounding cells are dead.
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
	//Checks all of the surrounding cells
          for(var x = i-1; x <= i+1; x++)
          {
	    for(var y = j-1; y <= j+1; y++)
	    {
              //This if checks that we aren't checking non-existant
              //cells that are out of bounds. 
              if(x >= 0 && y >= 0 && x < rows && y < columns)
              {
                //2nd && checks that we aren't counting the current cell
                //we are in as a neighboring cell.
	        if(currGrid[x][y] == true && (x != i && y != J) )
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

function nextGen()
{
 currGrid = nextGrid;
 generation++;
}

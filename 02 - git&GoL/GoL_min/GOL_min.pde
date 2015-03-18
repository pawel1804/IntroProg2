//LOSOWA MATRYCA wersja konara bang bang bang

int dim = 20; boolean [ ] [ ] cells = new boolean[dim][dim];

void setup() {
  size(400,400);
  randomizeCells();  
  frameRate(12); }

void draw() {
  background(0);  stroke(0);
  for (int row = 0; row < dim; row++) {
    for (int col = 0; col < dim; col++) {
      if (cells[col][row]) fill(200); else fill(80); 
      rect (width / dim * col, height / dim * row, width / dim, height / dim);  } } }

void randomizeCells() {
  for(int row=0; row<dim; row++) {
    for(int col=0; col<dim; col++) {
      cells[col][row] = randomBoolean(); } }

boolean random Boolean() {
  float r = random(1000); 
  if(r>500) return true; return false; } 

void keyReleased() {
  if(key == ' ') randomizeCells; }

//LOGIKA i rysowanie

boolean [ ] [ ] temporary = new boolean[dim][dim]

void draw() {
  updateCells(); 
}

void updateCells() {
  int n = 0;
    for (int row = 0; row < dim; row++) {
      for (int col = 0; col < dim; col++) {
        n = numberOfNeighbours(col, row);
          if( n > 3 && n <7) temporary [col][row] = true; 
          else temporary [col][row] = false;  } }
  arrayCopy(temporary, cells); }








int numberOfNeighbours(int col, int row) {
  int result = 0;
  if (getCell ( col - 1, row - 1   ) ) result +=1;  
  if (getCell ( col     , row - 1   ) ) result +=1;   
  if (getCell ( col + 1, row - 1  ) ) result +=1;  
  if (getCell ( col -  1, row       ) ) result +=1;  
  if (getCell ( col + 1, row       ) ) result +=1;  
  if (getCell ( col -  1, row + 1 ) ) result +=1;  
  if (getCell ( col      , row + 1 ) ) result +=1;  
  if (getCell ( col + 1, row + 1 ) ) result +=1;  
  return result; 
}

boolean getCel(int col, int row) {
  if(
    col < 0 || 
    col >= dim || 
    row <0 || 
     row >= dim  )  return false;
  return cells[row][col];
}




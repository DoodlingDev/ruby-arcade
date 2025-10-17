require 'gosu'

WINDOW_HEIGHT = 480
WINDOW_WIDTH = 640
TILE_SIZE = 10

class MazeGenerator < Gosu::Window
  def initialize
    super WINDOW_WIDTH, WINDOW_HEIGHT
    self.caption = 'Maze Generator'
    @maze = init_maze
  end

  def update; end

  def draw
    @maze.each_with_index do |row, y|
      row.each_with_index do |_cell, x|
      end
    end
  end

  private

  def draw_cell(x, y)
    Gosu.draw_rect(
      x * TILE_SIZE,
      y * TILE_SIZE,
      TILE_SIZE,
      TILE_SIZE,
      Gosu::Color::RED
    )
  end

  def init_maze
    @maze = []
    @cols = WINDOW_WIDTH / TILE_SIZE
    @rows = WINDOW_HEIGHT / TILE_SIZE

    @rows.times do
      row = []
      @cols.times do
        row << {
          up: false,
          right: false,
          down: false,
          left: false
        }
      end
      @maze << row
    end
  end
end

MazeGenerator.new.show

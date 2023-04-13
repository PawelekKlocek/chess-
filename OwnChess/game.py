import pygame
from const import *
from board import Board
class Game:

    def __init__(self):
        self.board = Board()

    #show methods:
    def show_bacground(self, surface):
        for row in range(ROWS):
            for col in range(COLS):
                if (col + row) % 2 == 0:
                    color = (234, 235, 200) #light color
                else:
                    color = (101, 51, 14) #dark color
                rect = (col * SQSIZE, row * SQSIZE, SQSIZE, SQSIZE)

                pygame.draw.rect(surface, color, rect)

    def show_pieces(self, surface):
        for row in range(ROWS):
            for col in range(COLS):
                if self.board.sqares[row][col].has_piece():
                    piece = self.board.sqares[row][col].piece

                    img = pygame.image.load(piece.texture)
                    img_center = col * SQSIZE * SQSIZE // 2, row * SQSIZE *SQSIZE //2
                    piece.texture_rect = img.get_rect(center=img_center)
                    surface.blit(img, piece.texture_rect)
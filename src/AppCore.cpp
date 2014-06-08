#include <iostream>

#include "AppCore.h"

#include <SDL2/SDL.h>

AppCore::AppCore()
{
}

AppCore::~AppCore()
{
}

void AppCore::run( ) const
{
    //Set up variables
    SDL_Window* window = NULL;
    SDL_Renderer* renderer = NULL;

    //Initialize SDL
    if(SDL_Init(SDL_INIT_EVERYTHING) == -1)
    {
        return;
    }

    //Create the window
    window = SDL_CreateWindow("SDL 2 Test",
                              SDL_WINDOWPOS_UNDEFINED,
                              SDL_WINDOWPOS_UNDEFINED,
                              800,
                              600,
                              SDL_WINDOW_SHOWN);
    //Error Checking
    if(window == NULL)
    {
        SDL_Quit();
        return;
    }

    //This creates our rendering device, which we use now to handle graphics for us.
    renderer = SDL_CreateRenderer(window, -1,
                                   SDL_RENDERER_ACCELERATED |
                                   SDL_RENDERER_PRESENTVSYNC);
    bool isRunning = true;

    //The game loop
    while(isRunning)
    {
        //Check if the user pressed the exit button
        SDL_Event event;

        if(SDL_PollEvent(&event))
        {
            if(event.type == SDL_QUIT)
            {
               isRunning = false;
            }
        }
        //Set the drawing color
        SDL_SetRenderDrawColor(renderer, 100, 0, 250, 255);

        //Clear the screen
        SDL_RenderClear(renderer);

        //Draw the screen. This replaces SDL_Flip in SDL 1.2
        //and SDL_UpdateWindowSurface in SDL 2 if we weren't
        //working with a rendering context
        SDL_RenderPresent(renderer);
    }
    //We have to clean up the renderer when we' re done with it
    SDL_DestroyRenderer(renderer);

    //Clean up the window
    SDL_DestroyWindow(window);

    //And quit :)
    SDL_Quit();

    return;
}

int AppCore::sum( int a, int b ) const
{
    return a + b;
}

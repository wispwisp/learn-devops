from typing import List

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

import uvicorn

app = FastAPI()

# To allow CORS:
if True:
    origins = ["*"]
    app.add_middleware(
        CORSMiddleware,
        allow_origins=origins,
        allow_credentials=True,
        allow_methods=["*"],
        allow_headers=["*"],
    )


@app.get("/")
async def root():
    return {"app version": "0.0.0"}


@app.get("/entities")
@app.get("/entities/all")
async def get_all_cocktails():
    return {"e1": "somestring"}


class Entity(BaseModel):
    name: str
    entities: List[str]


@app.post("/entities")
async def add_cocktail(entity: Entity):
    print('HERE: ', entity.name)
    return entity


if __name__ == "main":
    uvicorn.run(app, host="0.0.0.0", port=8000)

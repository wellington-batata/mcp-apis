import { NextResponse } from 'next/server'
import operation from "./operations"
import { Context } from 'vm'

export async function GET() {
        return NextResponse.json(await operation.getAll(), { status: 200 });
}

export async function POST(request: Request) {
    const body = await request.json()
    const todo = await operation.create(body)
    return NextResponse.json(todo, { status: 201 });
}
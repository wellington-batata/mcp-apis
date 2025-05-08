import { NextResponse } from 'next/server'
import operation from "../operations"

export async function GET(request: Request, { params }: { params: Promise<{ slug: string }> }) {
        const slug =  (await params).slug;   
        console.log('slug >>>>>>>>', slug);
        return NextResponse.json(await operation.getById(slug), { status: 200 });
}
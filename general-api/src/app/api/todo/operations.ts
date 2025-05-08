import prisma  from "@/app/utils/prisma";

async function getAll() {
    const todos = await prisma.todo.findMany()
    return todos;
}


async function getById(slug: string) {
    const todo = await prisma.todo.findFirst({ where: { slug: slug } })
    return todo;
}

async function create(data: any) {
    const todo = await prisma.todo.create({ data })
    return todo;
}

export default {
    getAll,
    getById,
    create
}
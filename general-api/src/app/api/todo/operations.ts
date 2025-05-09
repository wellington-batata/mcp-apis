import prisma  from "@/app/utils/prisma";

const getAll = async () => {
    const todos = await prisma.todo.findMany()
    return todos;
}


const getById = async (slug: string) => {
    const todo = await prisma.todo.findFirst({ where: { slug: slug } })
    return todo;
}

const create = async (data: any) => {
    const todo = await prisma.todo.create({ data })
    return todo;
}

const operations = {
    getAll,
    getById,
    create
}
export default operations

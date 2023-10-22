import prisma from '$lib/config/prisma';

export async function load({ params }) {

    // const page = params.page as string;
    // const pageInt = parseInt(page);
    // const pageSize = 10;
    // const skip = (pageInt - 1) * pageSize;

    // const result = await prisma.ingrediente.findMany({
    //     skip: skip,
    //     take: pageSize,
    //     orderBy: {
    //         nome: 'asc'
    //     }
    // });

    const result = await prisma.ingrediente.findMany({})

    // const total = await prisma.ingrediente.count();

    // console.log(total);

    // const totalPages = Math.ceil(total / pageSize);

    // return {
    //     body: {
    //         result,
    //         totalPages
    //     }
    // };
    return {
        result

    }
}
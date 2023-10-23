// lib/server/lucia.ts
import { lucia } from 'lucia';
import { sveltekit } from 'lucia/middleware';
import { prisma } from '@lucia-auth/adapter-prisma';
import { PrismaClient } from '@prisma/client';
import { dev } from '$app/environment';

const client = new PrismaClient();

export const auth = lucia({
	adapter:  prisma(client, {
		user: "authUser",
		key: "authKey",
		session: "authSession"
	}),
	env: dev ? 'DEV' : 'PROD',
	middleware: sveltekit(),
	getUserAttributes: (userData) => {
		return {
			userId: userData.id,
			email: userData.email,
			firstName: userData.firstName,
			lastName: userData.lastName,
			role: userData.role,
			verified: userData.verified,
			receiveEmail: userData.receiveEmail,
			token: userData.token
		};
	}
});

export type Auth = typeof auth;
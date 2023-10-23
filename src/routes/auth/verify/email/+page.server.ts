import { redirect } from '@sveltejs/kit';

export const load = async (event) => {
	const { user } = await event.locals.auth.validate();
	if (!user) throw redirect(302, '/auth/sign-in');
	return {
		user
	};
};

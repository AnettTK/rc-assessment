import { useState, useEffect } from 'react';
import { Hero } from './hero';
import { callApi } from './call-api';

export const useFetchHeroes = () => {
  const [loadingStatus, setLoadingStatus] = useState<string>('Loading heroes...');
  const [heroes, setHeroes] = useState<Hero[]>([]);

  useEffect(() => {
    async function fetchHeroes() {
      try {
        const heroesData = await callApi<Hero[]>('heroes');
        setHeroes(heroesData);
        setLoadingStatus('');
      } catch (error) {
        setLoadingStatus('Error fetching heroes');
        console.error('Error fetching heroes:', error);
      }
    }

    fetchHeroes();
  }, []);

  return { heroes, loadingStatus, setHeroes };
};

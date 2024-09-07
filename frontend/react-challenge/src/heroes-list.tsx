import './heroes-list.css';
import { useFetchHeroes } from './use-fetch-heroes';

function HeroesList() {
  const { heroes, loadingStatus, setHeroes } = useFetchHeroes();

  const toggleAvailability = (id: number) => {
    setHeroes((prevHeroes) =>
      prevHeroes.map((hero) => {
        if (hero.id === id) {
          return { ...hero, available: !hero.available };
        }
        return hero;
      })
    );
  };

  return (
    <>
      <h2>Heroes</h2>
      <ol className='heroes-list'>
        <li>{loadingStatus}</li>
        {
          heroes.map((hero) => (
            <li
              key={hero.id}
              className={hero.available ? 'available' : 'unavailable'}
              onClick={() => toggleAvailability(hero.id)}
              style={{ cursor: 'pointer' }}
            >
              {hero.name}
              <span style={{ fontSize: '12px' }}>{hero.available ? ' - ¨Available¨' : ''}</span>
            </li>
          ))
        }
      </ol>
    </>
  );
}

export default HeroesList;

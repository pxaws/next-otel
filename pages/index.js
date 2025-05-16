import useSWR from 'swr';

const fetcher = (url) => fetch(url).then((r) => r.json());

export default function Home() {
  const { data, error } = useSWR('/api/hello', fetcher);

  if (error) return <p>❌ Failed to load</p>;
  if (!data)  return <p>⏳ Loading...</p>;

  return (
    <div style={{ fontFamily: 'sans-serif', padding: '2rem' }}>
      <h1>Next.js + OpenTelemetry</h1>
      <p>Hello, <strong>{data.name}</strong>!</p>
    </div>
  );
}

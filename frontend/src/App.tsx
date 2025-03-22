import yumEmoji from './assets/yumEmoji.svg';
import smileEmoji from './assets/smileEmoji.svg';
import './styles/index.css';
import './App.css';

function App() {
	return (
		<div className='flex flex-col  m-auto'>
			<div className='inline-flex mb-5'>
				<img src={smileEmoji} className='h-40 p-5' alt='Smile emoji' />
				<img src={yumEmoji} className='h-40 p-5' alt='Yum emoji' />
			</div>
			<div>
				<h1 className='text-gray-300 mb-5'>Emojido</h1>
			</div>
		</div>
	);
}

export default App;

User.create!(
   [
      {
      nickname:'ふーたろう',
      email:'1@1',
      age:'27',
      prefecture:'大阪府',
      sex:'true',
      introduction:'よろしく',
      image: File.open('./app/assets/images/man1.jpg'),
      password:'111111'
      },
      {
      nickname:'みーちゃん',
      email:'2@2',
      age:'20',
      prefecture:'京都府',
      sex:'false',
      introduction:'よろしく',
      image: File.open('./app/assets/images/woman1.jpg'),
      password:'222222'
      },
      {
      nickname:'亜希子',
      email:'3@3',
      age:'27',
      prefecture:'大阪府',
      sex:'false',
      introduction:'よろしく',
      image: File.open('./app/assets/images/woman2.jpg'),
      password:'333333'
      },
      {
      nickname:'和夫',
      email:'4@4',
      age:'26',
      prefecture:'京都府',
      sex:'true',
      introduction:'よろしく',
      image: File.open('./app/assets/images/man2.jpg'),
      password:'444444'
      },
      {
      nickname:'みな',
      email:'5@5',
      age:'28',
      prefecture:'兵庫県',
      sex:'false',
      introduction:'よろしく',
      image: File.open('./app/assets/images/woman3.jpg'),
      password:'555555'
      },
      {
      nickname:'ジニー',
      email:'6@6',
      age:'28',
      prefecture:'奈良県',
      sex:'true',
      introduction:'よろしくです。プロフィール画像出典：ぱくたそ （https://www.pakutaso.com/）',
      image: File.open('./app/assets/images/man3.jpg'),
      password:'666666'
      },
      {
      nickname:'のりえ',
      email:'7@7',
      age:'28',
      prefecture:'滋賀県',
      sex:'false',
      introduction:'よろしくです。プロフィール画像出典：ぱくたそ （https://www.pakutaso.com/）',
      image: File.open('./app/assets/images/woman4.jpg'),
      password:'777777'
      },
      {
      nickname:'なぎさ',
      email:'8@8',
      age:'24',
      prefecture:'大阪府',
      sex:'false',
      introduction:'よろしくです。プロフィール画像出典：ぱくたそ （https://www.pakutaso.com/）',
      image: File.open('./app/assets/images/woman5.jpg'),
      password:'888888'
      },
      {
      nickname:'あかり',
      email:'9@9',
      age:'24',
      prefecture:'京都府',
      sex:'false',
      introduction:'よろしくです!プロフィール画像出典：ぱくたそ （https://www.pakutaso.com/）',
      image: File.open('./app/assets/images/woman6.jpg'),
      password:'999999'
      }
   ]
)
Admin.create!(
      nickname: '管理者',
      email: 'admin@admin',
      password: 'adminadmin'
)
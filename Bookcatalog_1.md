# Book Catalog Database

### Table: Publisher
| PUB_ID | PUB_NAME       | PUB_MAIL_ID       | PUB_PH_NO  |
|--------|----------------|-------------------|------------|
| 1      | Jaico          | jaico@gmail.com   | 7896376548 |
| 2      | Arihant        | arihant@gmail.com   | 8976598765 |
| 3      | Penguin random | penguin@gmail.com | 9087647655 |

### Table: Author
| AUTHOR_ID | AUTHOR_NAME  | AUTHOR_MAIL_ID   | AUTHOR_PH_NO |
|-----------|--------------|------------------|--------------|
| 1         | Arun shourie | arun@gmail.com   | 9043723456   |
| 2         | Vikram sethe | vikram@gmail.com | 9876456473   |
| 3         | Abdul fazel  | abdul@gmail.com  | 8765445678   |
### Table: Prefered language
| SUB_ID | SUB_NAME |
|--------|----------|
| 1      | Tamil    |
| 2      | English  |

### Table: Titles
| TITLE_ID | PUB_ID | AUTHOR_ID | SUB_ID | PUB_DATE   | TITLE            | VERSION_NUMBER | PRICE |
|----------|--------|-----------|--------|------------|------------------|----------------|-------|
| 1        | 1      | 1         | 1      | 23-05-2014 | A Secular agenda | 1              | 400   |
| 2        | 2      | 2         | 1      | 02-06-2017 | A Suitable boy   | 1              | 800   |

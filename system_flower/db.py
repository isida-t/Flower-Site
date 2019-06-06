import models
import sqlite3

class FlowerDAO:

    def __init__(self):
        self.file_name = 'flower.db'

    def connect_db(self):
        self.conn = sqlite3.connect(self.file_name)
        self.curs = self.conn.cursor()

    def close_db(self):
        self.curs.close()
        self.conn.close()

    def initialize_flower(self, row):
        # flowerのインスタンスを生成
        flower = models.Flower()
        # row[0]は現在処理中の1行分の検索結果の0列目
        # これをflowerインスタンスのid属性に代入
        flower.id = row[0]
        flower.name = row[1]
        flower.color = row[2]
        flower.place1 = row[3]
        flower.place2 = row[4]
        flower.place3 = row[5]
        flower.place4 = row[6]
        flower.place5 = row[7]
        flower.schedule1 = row[8]
        flower.schedule2 = row[9]
        flower.schedule3 = row[10]
        flower.schedule4 = row[11]
        flower.pic = row[12]
        for i in range(3, 8):
            if row[i] != None:
                flower.places += row[i] + " "
                
        for l in range(8, 12):
            if row[l] != None:
                flower.schedules += row[l] + " "
        
        return flower

    # タイトルに指定した文字列が含まれている花をまとめて返す
    def get_flowers_by_name(self, name):
        self.connect_db()
        # SQL文。?のところは後から設定できる
        q = 'SELECT * FROM flowers WHERE name LIKE ?;'
        # SQLを実行。qの?の部分は
        self.curs.execute(q, [''.join(['%', name, '%'])])
        # 検索結果をすべて取り出し, rowsに代入
        rows = self.curs.fetchall()
        self.close_db()

        # flowersというリストをつくる
        flowers = []

        # rowsには検索結果全体が含まれている。これを繰り返し処理
        # 検索結果が10行分あれば、10回繰り返す。
        # rowには現在処理中の1行分の検索結果が代入される
        for row in rows:
            flower = self.initialize_flower(row)
            # flowersにflowerインスタンスを追加
            flowers.append(flower)

        # すべて処理が終わったら、この関数はflowersを返す
        return flowers
    
    def get_flowers_by_place(self, id):
        self.connect_db()
        # SQL文。?のところは後から設定できる
        q = 'SELECT * FROM flowers WHERE name LIKE ?;'
        # SQLを実行。qの?の部分は
        self.curs.execute(q, [''.join(['%', id, '%'])])
        # 検索結果をすべて取り出し, rowsに代入
        rows = self.curs.fetchall()
        self.close_db()

        # flowersというリストをつくる
        flowers_place = []

        # rowsには検索結果全体が含まれている。これを繰り返し処理
        # 検索結果が10行分あれば、10回繰り返す。
        # rowには現在処理中の1行分の検索結果が代入される
        for row in rows:
            flower = self.initialize_flower(row)
            # flowersにflowerインスタンスを追加
            flowers.append(flower_place)

        # すべて処理が終わったら、この関数はflowersを返す
        return flowers_place

    def get_flower(self, id):
        self.connect_db()
        q = 'SELECT * FROM flowers WHERE id = ? ORDER BY id ASC;'
        # SQLを実行
        self.curs.execute(q, [id])
        # 検索結果をひとつ取り出し, rowに代入
        row = self.curs.fetchone()
                
        self.close_db()

        return self.initialize_flower(row)

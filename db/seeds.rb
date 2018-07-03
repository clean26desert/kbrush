# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Size.create(:size_name => "B4")
Size.create(:size_name => "A4")

User.create(:user_img => Rails.root.join("./app/assets/images/nigaoe_izumi_kyouka.png").open, :user_handle_name => "泉鏡花", :email => "1@1", :password => "111111", :user_introduct => "紹介1", :credit => 111111, :bank => "イオン銀行", :branch_office => "渋谷支店", :bank_account => 111111, :f_appo_flg => 1, :f_business_flg => 1, :user_appo_flg => 1)
User.create(:user_img => Rails.root.join("./app/assets/images/nigaoe_shimadu_hisamitsu.png").open, :user_handle_name => "島津久光", :email => "2@2", :password => "111111", :user_introduct => "紹介2", :credit => 111111, :bank => "新生銀行", :branch_office => "新宿支店", :bank_account => 111111, :f_appo_flg => 1, :f_business_flg => 1, :user_appo_flg => 1)
User.create(:user_img => Rails.root.join("./app/assets/images/nigaoe_iwasaki_yotarou.png").open, :user_handle_name => "岩崎弥太郎", :email => "3@3", :password => "111111", :user_introduct => "紹介3", :credit => 111111, :bank => "ソニー銀行", :branch_office => "池袋支店", :bank_account => 111111, :f_appo_flg => 1, :f_business_flg => 1, :user_appo_flg => 1)

Item.create(:user_id => 1, :item_img => Rails.root.join("./app/assets/images/item1.png").open, :item_name => "商品1", :item_introduct => "商品紹介1", :item_attention => "商品注意1", :item_limited_size_b4 => 1, :item_limited_size_a4 => 0, :item_limited_style_real => 0, :item_limited_style_abstract => 1, :item_limited_coating_line => 1, :item_limited_coating_cg => 1, :item_limited_motif_person => 0, :item_limited_motif_nature_outside => 1, :item_limited_advice_composition => 0, :item_limited_advice_drawing => 1, :item_appo_flg => 1)
Item.create(:user_id => 3, :item_img => Rails.root.join("./app/assets/images/item2.png").open, :item_name => "商品2", :item_introduct => "商品紹介2", :item_attention => "商品注意2", :item_limited_size_b4 => 0, :item_limited_size_a4 => 1, :item_limited_style_real => 0, :item_limited_style_abstract => 1, :item_limited_coating_line => 1, :item_limited_coating_cg => 1, :item_limited_motif_person => 0, :item_limited_motif_nature_outside => 1, :item_limited_advice_composition => 0, :item_limited_advice_drawing => 1, :item_appo_flg => 1)

AloneIllust.create(:user_id => 2, :size_id => 1, :al_illust_img => Rails.root.join("./app/assets/images/bg_takeyabu_layer2.jpg").open, :al_illust_name => "イラスト1", :al_illust_introduct => "イラスト紹介1", :al_illust_attention => "イラスト注意1", :al_illust_limited_style_real => 0, :al_illust_limited_style_abstract => 1, :al_illust_limited_coating_line => 0, :al_illust_limited_coating_cg => 1, :al_illust_limited_motif_person => 0, :al_illust_limited_motif_nature_outside => 1, :al_illust_limited_advice_composition => 0, :al_illust_limited_advice_drawing => 1, :al_illust_appo_flg => 1)
AloneIllust.create(:user_id => 2, :size_id => 2, :al_illust_img => Rails.root.join("./app/assets/images/bg_nangoku.jpg").open, :al_illust_name => "イラスト2", :al_illust_introduct => "イラスト紹介2", :al_illust_attention => "イラスト注意2", :al_illust_limited_style_real => 0, :al_illust_limited_style_abstract => 1, :al_illust_limited_coating_line => 0, :al_illust_limited_coating_cg => 1, :al_illust_limited_motif_person => 0, :al_illust_limited_motif_nature_outside => 1, :al_illust_limited_advice_composition => 0, :al_illust_limited_advice_drawing => 1, :al_illust_appo_flg => 1)

Order.create(:item_id => 1, :alone_illust_id => 1, :status => 0)
Order.create(:item_id => 1, :alone_illust_id => 1, :status => 0)
Order.create(:item_id => 2, :alone_illust_id => 1, :status => 0)
Order.create(:item_id => 2, :alone_illust_id => 2, :status => 0)
Order.create(:item_id => 2, :alone_illust_id => 2, :status => 2)

ActiveIllust.create(:a_illust_img => Rails.root.join("./app/assets/images/bg_rain_natural_mori.jpg").open, :a_illust_name => "添削イラスト1", :advice => "アドバイス1", :a_value_clear => 5, :a_value_match => 4, :a_value_again => 3, :a_value_comment => "コメント1", :p_value_clear => 1, :p_value_match => 1, :p_value_again => 1, :p_value_comment => "", :order_id => 5)
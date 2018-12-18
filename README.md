# template.sh

Bu script, proje geliştirenler için hızlıca proje oluşturarak başlama imkanı sunar.
## Tavsiye edilen kurulum
- Betiği `PATH` değişkeninde bulunan size uygun bir yere koyun.
- Betiğe çalışma yetkisi verin. 
- Betiği herhangi bir argüman vermeden bir kere çalıştırın.
## Kullanımı
- `PROJECTPATH` dizininde bir proje hazırlayıp, "bundan sonra `NICKNAME` dediğimde şu proje taslağını oluştur" demek için şu komutu veriyorsunuz.

> `template.sh learn NICKNAME PROJECTPATH`
- Daha önceden `NICKNAME` ismiyle kaydettiğiniz taslak ile `PATH` dizininde bir proje oluşturmak istiyorsanız şu komutu veriyorsunuz.
  Eğer `PATH` mevcut değilse, öyle bir klasör oluşturuyor. 

> `template.sh apply NICKNAME PATH`
- Kaydettiğiniz tüm taslak tiplerine verdiğiniz isimleri görmek için şu komutu veriyorsunuz.

> `template.sh show`
- Script aslında projenin taslağını zipleyerek alıyor ve `$HOME/.project-structures` dizinine verdiğiniz nickname ile kaydediyor. Dışarıdan bu tip bir taslağın zipini aldıysanız ve kullanmak üzere saklamak istiyorsanız şu komutu verebilirsiniz. Bu durumda aynı zip dosyasından sizde de varsa, script o dosyanın **üzerine yazacaktır**. Bu yüzden aşağıdaki komutu kullanırken dikkatli olmalı.

> `template.sh import IMPORT_PATH`
- Script tarafından `NICKNAME` adıyla kaydedilen proje için oluşturulan zip dosyasını belirttiğiniz `PATH` dizinine koymak için aşağıdaki komut kullanılabilir. Bu aslında doğrudan bir kopyalama komutu olduğu için, veri kaybetmemek adına dosyanın çıkarılacağı yerde verilen `NICKNAME` ile aynı isimde bir zip dosyası bulunmamalı. 

> `template.sh export NICKNAME PATH`
- Daha önce kaydettiğiniz `NICKNAME` isimli taslağı silmek isterseniz, şu komutu kullanabilirsiniz.

> `template.sh remove NICKNAME`
## Notlar
- Scriptin temelde **zip** ve **unzip** ile çalıştığını düşünürsek, `learn` alt komutunda verdiğiniz `NICKNAME` daha önce kullandığınız bir isim ise eskiden kaydettiğinizin üzerine yazar. Doğal olarak bu paketler sisteminizde yüklü olmalıdır. 
- Eğer bir dizini verip, orada `NICKNAME` isimli taslaktan bir proje oluşturmak isterseniz, o dizinde dosya olmadığından emin olun. Yoksa isim çakışmalarına bağlı olarak o dosyaların **üzerine yazılabilir**.
- Scripti incelerseniz `_project` şeklinde başlayan fonksiyonlar göreceksiniz, bunlar aslında bu scriptin parçaları ancak bu fonksiyonların kendisini çağırarak kullanmamanızı tavsiye ederim.
- Script temelde `$HOME/.project-structures` dizinini kullanır. Her çalışmasında böyle bir dizin var mı diye kontrol eder, yoksa oluşturur.
- Bir taslak için `learn` alt komutunu çalıştırdığınızda bunun içindeki `__pycache__` klasörlerini `.git` klasörünü ve `.pyc` dosyalarını yedeğe dahil etmez.


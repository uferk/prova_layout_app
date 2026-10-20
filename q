[1mdiff --git a/lib/main.dart b/lib/main.dart[m
[1mindex 07ac285..07d1817 100644[m
[1m--- a/lib/main.dart[m
[1m+++ b/lib/main.dart[m
[36m@@ -130,27 +130,28 @@[m [mclass TelaDashboard extends StatelessWidget {[m
             Stack([m
               clipBehavior: Clip.none,[m
               children: [[m
[31m-                // TODO [Desafio 6]: Substituir o Container simples por um Card do Material com elevation: 4[m
[31m-                Container([m
[31m-                  width: double.infinity,[m
[31m-                  padding: const EdgeInsets.all(20.0),[m
[31m-                  decoration: BoxDecoration([m
[31m-                    color: Colors.grey.shade100,[m
[31m-                    borderRadius: BorderRadius.circular(12),[m
[31m-                    border: Border.all(color: Colors.grey.shade300),[m
[31m-                  ),[m
[31m-                  child: Row([m
[31m-                    children: [[m
[31m-                      const Icon(Icons.star, size: 48, color: Colors.amber),[m
[31m-                      const SizedBox(width: 16),[m
[31m-                      Column([m
[31m-                        crossAxisAlignment: CrossAxisAlignment.start,[m
[31m-                        children: const [[m
[31m-                          Text('Gavião-Real', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),[m
[31m-                          Text('Avistado no Parque Central', style: TextStyle(color: Colors.grey)),[m
[32m+[m[32m                // DESAFIO 6: Container substituído por Card do Material (elevation: 4)[m
[32m+[m[32m                Card([m
[32m+[m[32m                  elevation: 4,[m
[32m+[m[32m                  margin: EdgeInsets.zero,[m
[32m+[m[32m                  child: Padding([m
[32m+[m[32m                    padding: const EdgeInsets.all(20.0),[m
[32m+[m[32m                    child: SizedBox([m
[32m+[m[32m                      width: double.infinity,[m
[32m+[m[32m                      child: Row([m
[32m+[m[32m                        children: [[m
[32m+[m[32m                          const Icon(Icons.star, size: 48, color: Colors.amber),[m
[32m+[m[32m                          const SizedBox(width: 16),[m
[32m+[m[32m                          Column([m
[32m+[m[32m                            crossAxisAlignment: CrossAxisAlignment.start,[m
[32m+[m[32m                            children: const [[m
[32m+[m[32m                              Text('Gavião-Real', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),[m
[32m+[m[32m                              Text('Avistado no Parque Central', style: TextStyle(color: Colors.grey)),[m
[32m+[m[32m                            ],[m
[32m+[m[32m                          ),[m
                         ],[m
                       ),[m
[31m-                    ],[m
[32m+[m[32m                    ),[m
                   ),[m
                 ),[m
                 Positioned([m
[36m@@ -168,6 +169,22 @@[m [mclass TelaDashboard extends StatelessWidget {[m
                     ),[m
                   ),[m
                 ),[m
[32m+[m[32m                // DESAFIO 5: 2º selo sobreposto no canto inferior esquerdo[m
[32m+[m[32m                Positioned([m
[32m+[m[32m                  bottom: -8,[m
[32m+[m[32m                  left: -8,[m
[32m+[m[32m                  child: Container([m
[32m+[m[32m                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),[m
[32m+[m[32m                    decoration: BoxDecoration([m
[32m+[m[32m                      color: Colors.green,[m
[32m+[m[32m                      borderRadius: BorderRadius.circular(12),[m
[32m+[m[32m                    ),[m
[32m+[m[32m                    child: const Text([m
[32m+[m[32m                      'Confirmado',[m
[32m+[m[32m                      style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),[m
[32m+[m[32m                    ),[m
[32m+[m[32m                  ),[m
[32m+[m[32m                ),[m
                 // TODO [Desafio 5]: Adicionar segundo Positioned no canto inferior esquerdo:[m
                 // Positioned(bottom: -8, left: -8, child: Container(color: Colors.green, child: Text('Confirmado')))[m
               ],[m

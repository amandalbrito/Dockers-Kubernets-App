echo "🏗️  Construindo imagens Docker customizadas para Web Solutions..."

# Construir imagem do Nginx
echo "📦 Construindo imagem do Nginx..."
docker build -f dockerfiles/Dockerfile.nginx -t websolutions/nginx:1.0 .

# Construir imagem do Apache
echo "📦 Construindo imagem do Apache..."
docker build -f dockerfiles/Dockerfile.apache -t websolutions/apache:1.0 .

echo "✅ Imagens construídas com sucesso!"
echo ""
echo "📋 Imagens disponíveis:"
docker images | grep websolutions

echo ""
echo "🚀 Para usar as imagens customizadas, atualize os deployments:"
echo "   - websolutions/nginx:1.0"
echo "   - websolutions/apache:1.0"
	
	
	<c:forEach var='article' items='${articleList }'>
		<tr>
			<td class='info-col'>
				<div class='product'>
					<figure>
						<a href='product.html' title='Product Name'> <img
							src='assets/images/products/product1.jpg' alt='Product image'
							class='product-image'> <img
							src='assets/images/products/product1-hover.jpg'
							alt='Product image' class='image-hover'>
						</a>
					</figure>
					<div class='product-info'>
						<h3 class='product-title'>
							<a href='product.html'>${article.c_product}</a>
						</h3>
						<ul>
							<li><span>Size:</span> SM</li>
							<li><span>Color:</span> Black</li>
							<li><span>Dimension:</span> 16 x 20 x 30</li>
						</ul>
					</div>
				</div>
				<!-- End .product -->
			</td>
			<td class='price-col'>${article.c_price }</td>
			<td class='quantity-col'><input type='number' name='cartcnt'
				class='form-control cnt' min='1' max='999'
				placeholder='${article.sb_count}' value=${article.sb_count} >
				<input type='hidden' id='sb_serial' name='sb_serial'
				value='${article.sb_serial}'> <input type='hidden'
				name='c_price' value='${article.c_price }'></td>
			<td class='subtotal-col'>${article.sb_price}</td>
			<td class='delete-col'><a
				href='cartDelete.do?sb_serial=${article.sb_serial}&loginid=${id}'
				class='delete-btn' title='Delete product'><i class='fa fa-times'></i></a>
			</td>
		</tr>
	</c:forEach>
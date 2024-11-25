<%-- 
    Document   : checkout
    Created on : Nov 22, 2024, 11:04:51 AM
    Author     : 3012188
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%@include file="WEB-INF/jspf/head.jspf" %>
<style>
        /* General Reset */
      .checkout-form {
    background-color: #ffffff;
    padding: 30px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    max-width: 800px;
    margin: 0 auto;
    margin-bottom: 5%;
}

.form-section {
    background-color: #f9f9f9;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    margin-bottom: 30px;
}

.form-section h3 {
    margin-bottom: 15px;
    color: #456289;
    border-bottom: 2px solid #80a4c0;
    padding-bottom: 5px;
}

.order-summary {
    background-color: #f4f4f4;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    margin-bottom: 30px;
}

.order-summary h3 {
    color: #456289;
    margin-bottom: 15px;
}

.order-summary ul {
    list-style: none;
    padding: 0;
}

.order-summary li {
    display: flex;
    justify-content: space-between;
    padding: 5px 0;
}

.order-summary .total {
    font-weight: bold;
    font-size: 1.2em;
}

.btn {
    background-color: #80a4c0;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    display: block;
    width: 100%;
    margin-top: 20px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #456289;
}

</style>

<!-- Main Content -->
    <main>
        <!-- Checkout Form -->
        <div class="checkout-form">
            <h2>Checkout</h2>
            <form action="process_checkout.php" method="POST">
                
                <!-- Billing Information Section -->
                <div class="form-section">
                    <h3>Billing/Shipping Information</h3>
                    <label for="billing_name">Full Name</label>
                    <input type="text" id="billing_name" name="billing_name" required>

                    <label for="billing_email">Email Address</label>
                    <input type="email" id="billing_email" name="billing_email" required>

                    <label for="billing_address">Street Address</label>
                    <input type="text" id="billing_address" name="billing_address" required>

                    <label for="billing_city">City</label>
                    <input type="text" id="billing_city" name="billing_city" required>

                    <label for="billing_state">State/Province</label>
                    <input type="text" id="billing_state" name="billing_state" required>

                    <label for="billing_zip">Zip/Postal Code</label>
                    <input type="text" id="billing_zip" name="billing_zip" required>

                    <label for="billing_country">Country</label>
                    <select id="billing_country" name="billing_country" required>
                        <option value="us">United States</option>
                        <option value="ca">Canada</option>
                        <option value="uk">United Kingdom</option>
                        <option value="au">Australia</option>
                    </select>
                </div>

                <!-- Payment Information Section -->
                <div class="form-section">
                    <h3>Payment Information</h3>
                    <label for="card_name">Cardholder Name</label>
                    <input type="text" id="card_name" name="card_name" required>

                    <label for="card_number">Credit Card Number</label>
                    <input type="text" id="card_number" name="card_number" required>

                    <label for="expiry_date">Expiration Date</label>
                    <input type="month" id="expiry_date" name="expiry_date" required>

                    <label for="cvv">CVV</label>
                    <input type="text" id="cvv" name="cvv" required>
                </div>

                <!-- Order Summary Section -->
                <div class="order-summary">
                    <h3>Order Summary</h3>
                    <ul>
                        <li>
                            <span>Item 1: Example Product</span>
                            <span>$19.99</span>
                        </li>
                        <li>
                            <span>Item 2: Example Product 2</span>
                            <span>$29.99</span>
                        </li>
                        <li class="total">
                            <span>Total:</span>
                            <span>$49.98</span>
                        </li>
                    </ul>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn">Complete Purchase</button>
            </form>
        </div>
    </main>

<%@include file="WEB-INF/jspf/footer.jspf" %>
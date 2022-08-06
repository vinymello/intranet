<?php
    interface Intranet{
        // Funções da página login.html
        public function enter();
        public function register();
        // Funções da página register.html
        public function save();
        // Funções da página bank.html
        public function addBank();
        // Funções da página contact.html
        public function send();
        // Funções da página expense.html, revenue.html e paysheet.html
        public function addExpense();
        public function addRevenue();
        public function filter();
        public function select();
        // Funções da página investiment.html
        public function transaction();
        // Funções da página job.html
        public function updateJob();
        public function registerJob();
    }
?>
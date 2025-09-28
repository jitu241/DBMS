def nlq_to_sql(text):
    query = "SELECT * FROM students"
    text = text.lower()
    conditions = []

    if "marks greater than" in text:
        num = ''.join(ch for ch in text.split("marks greater than")[-1] if ch.isdigit()st)
        if num: conditions.append(f"marks > {num}")

    if "marks less than" in text:
        num = ''.join(ch for ch in text.split("marks less than")[-1] if ch.isdigit())
        if num: conditions.append(f"marks < {num}")

    if "age greater than" in text:
        num = ''.join(ch for ch in text.split("age greater than")[-1] if ch.isdigit())
        if num: conditions.append(f"age > {num}")

    if "age less than" in text:
        num = ''.join(ch for ch in text.split("age less than")[-1] if ch.isdigit())
        if num: conditions.append(f"age < {num}")

    if conditions:
        query += " WHERE " + " AND ".join(conditions)

    return query + ";"


# Run program
user = input("Enter your query in English: ")
print("SQL Query:")
print(nlq_to_sql(user))

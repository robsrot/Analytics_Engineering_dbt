dbq:
	@uv run python -c "import duckdb; conn = duckdb.connect('my_database.duckdb'); conn.sql('$(filter-out $@,$(MAKECMDGOALS))').show()"

schema:
	@uv run python -c "import duckdb; conn = duckdb.connect('my_database.duckdb'); conn.sql('describe $(filter-out $@,$(MAKECMDGOALS))').show()"

%:
	@:

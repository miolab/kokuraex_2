defmodule KokuraexWeb.PageControllerTest do
  use KokuraexWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "kokura.ex"
  end

  test "GET /about", %{conn: conn} do
    conn = get(conn, "/about")
    assert html_response(conn, 200) =~ "About"
  end

  test "GET /event", %{conn: conn} do
    conn = get(conn, "/event")
    assert html_response(conn, 200) =~ "Event"
  end
end

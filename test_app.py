import pytest
import httpx

@pytest.mark.asyncio
async def test_status():
    async with httpx.AsyncClient() as client:
        response = await client.get("http://localhost:5000/status")
        assert response.status_code == 200
        assert response.json() == {"message": "OK"}


import { test, expect } from "@playwright/test";

test("This is to check docker with github actions", async ({ page }) => {
  await page.goto("https://practicetestautomation.com/practice-test-login/", {
    waitUntil: "load",
  });

  await page.locator("#username").fill("student");
  await page.locator("#password").fill("Password123");
  await page.locator("#submit").click();

  await page.waitForTimeout(2000);
});

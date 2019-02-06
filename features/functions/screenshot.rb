
def screenshot(nome_cenario)
    screenshot = "report/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique para ver a evidência')
end
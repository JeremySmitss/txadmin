TriggerServerEvent('AdminPanel:join')

TriggerEvent('chat:addSuggestion', '/admincomment', 'Comment een speler', {
    { name="ID", help="De ID van de speler" },
    { name="Comment", help="De comment die je aan de speler wilt geven" }
})

TriggerEvent('chat:addSuggestion', '/staffooc', 'Stuur een ooc announce voor heel de server', {
    { name="announce", help="De announce die je wilt versturen." }
})
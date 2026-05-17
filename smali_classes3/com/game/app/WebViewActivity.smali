.class public Lcom/game/app/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 42
    const-string v0, "WebViewActivity"

    const-string v1, "Back button pressed but ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/game/app/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    invoke-virtual {p0}, Lcom/game/app/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 26
    invoke-virtual {p0}, Lcom/game/app/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/app/WebViewActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/game/app/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 32
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 36
    invoke-static {p0, p0}, Lcom/game/app/PayWebView;->openWebview(Landroid/app/Activity;Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    sget-object v0, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/app/PayWebView;->curWeb:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "WebViewActivity"

    const-string v1, "\u5ef6\u8fdf\u52a0\u8f7d."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/game/app/PayWebView;->curWeb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

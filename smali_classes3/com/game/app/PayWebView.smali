.class public Lcom/game/app/PayWebView;
.super Ljava/lang/Object;
.source "PayWebView.java"


# static fields
.field public static curWeb:Ljava/lang/String;

.field public static handlerThread:Landroid/os/HandlerThread;

.field public static mWebView:Landroid/webkit/WebView;

.field public static waitThread:Landroid/os/Handler;

.field private static webActivity:Landroid/app/Activity;

.field public static webContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/game/app/PayWebView;->curWeb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .line 14
    sget-object v0, Lcom/game/app/PayWebView;->webActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static closeWebView()V
    .locals 1

    .line 144
    const-string v0, "\u5173\u95ed\u5145\u503c\u754c\u9762"

    invoke-static {v0}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/game/app/PayWebView;->webActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/game/app/PayWebView;->webActivity:Landroid/app/Activity;

    .line 150
    :cond_0
    return-void
.end method

.method public static openWebview(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    sput-object p0, Lcom/game/app/PayWebView;->webActivity:Landroid/app/Activity;

    .line 84
    sput-object p1, Lcom/game/app/PayWebView;->webContext:Landroid/content/Context;

    .line 86
    const-string v0, "\u663e\u793a\u5145\u503c\u754c\u9762"

    invoke-static {v0}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/widget/FrameLayout;

    sget-object v1, Lcom/game/app/PayWebView;->webContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "container":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 92
    sget-object v1, Lcom/game/app/PayWebView;->webActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 95
    new-instance v1, Landroid/webkit/WebView;

    sget-object v2, Lcom/game/app/PayWebView;->webContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    .line 96
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 97
    sget-object v1, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 98
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 103
    sget-object v3, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/game/app/WebAppInterface;

    sget-object v5, Lcom/game/app/GameInfomation;->mainContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/game/app/WebAppInterface;-><init>(Landroid/content/Context;)V

    const-string v5, "AndroidWebView"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v3, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Landroid/webkit/WebViewClient;

    invoke-direct {v4}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v4, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    sget-object v4, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 114
    sget-object v2, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 118
    :cond_0
    sget-object v2, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/game/app/GameInfomation;->web_url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?appId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/game/app/GameInfomation;->AppId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&deviceId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/game/app/GameInfomation;->GlobalDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/game/app/GameInfomation;->web_uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&accessToken="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/game/app/GameInfomation;->web_accessToken:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "web":Ljava/lang/String;
    sget-object v4, Lcom/game/app/PayWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    sput-object v2, Lcom/game/app/PayWebView;->curWeb:Ljava/lang/String;

    .line 124
    invoke-static {v2}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static printMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 24
    const-string v0, "PayWebView"

    invoke-static {v0, p0}, Lcom/game/app/PrintMessage;->printMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static retryWebviewActvity(I)V
    .locals 4
    .param p0, "handleTime"    # I

    .line 56
    sget-object v0, Lcom/game/app/PayWebView;->waitThread:Landroid/os/Handler;

    new-instance v1, Lcom/game/app/PayWebView$2;

    invoke-direct {v1}, Lcom/game/app/PayWebView$2;-><init>()V

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method

.method public static startHandler()V
    .locals 6

    .line 28
    sget-object v0, Lcom/game/app/PayWebView;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game/app/PayWebView;->handlerThread:Landroid/os/HandlerThread;

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/game/app/PayWebView;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/game/app/PayWebView;->waitThread:Landroid/os/Handler;

    .line 33
    const-string v0, "\u521b\u5efa \u540e\u53f0\u7ebf\u7a0b"

    invoke-static {v0}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 38
    :cond_0
    sget-object v0, Lcom/game/app/GameInfomation;->UserInfo:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, "countdown"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "countdown":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f39\u7a97\u5012\u8ba1\u65f6\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 40
    mul-int/lit16 v1, v0, 0x3e8

    .line 41
    .local v1, "firstTime":I
    sget-boolean v2, Lcom/game/app/PrintMessage;->isDebug:Z

    if-eqz v2, :cond_1

    .line 42
    const/16 v1, 0x3e8

    .line 46
    :cond_1
    sget-object v2, Lcom/game/app/PayWebView;->waitThread:Landroid/os/Handler;

    new-instance v3, Lcom/game/app/PayWebView$1;

    invoke-direct {v3}, Lcom/game/app/PayWebView$1;-><init>()V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method public static startWebviewActvity()V
    .locals 3

    .line 72
    sget-object v0, Lcom/game/app/PayWebView;->webActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "\u5b58\u5728\u5145\u503c\u754c\u9762"

    invoke-static {v0}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_0
    const-string v0, "\u5f00\u542f\u5f39\u7a97"

    invoke-static {v0}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/game/app/GameInfomation;->mainActivity:Landroid/app/Activity;

    const-class v2, Lcom/game/app/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/game/app/GameInfomation;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.class public Lcom/wolf/android/MainActivity;
.super Lcom/getcapacitor/BridgeActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/getcapacitor/BridgeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0, p0}, Lcom/game/app/GameInfomation;->getConfigInfo(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-static {}, Lnp/ށ;->show()V

    .line 19
    sget v0, Lcom/wolf/android/R$style;->AppTheme_EdgeToEdge:I

    invoke-virtual {p0, v0}, Lcom/wolf/android/MainActivity;->setTheme(I)V

    .line 22
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 24
    invoke-super {p0, p1}, Lcom/getcapacitor/BridgeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/wolf/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/wolf/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 v0, 0x2

    .line 33
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 38
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/wolf/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/wolf/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

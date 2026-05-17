.class Lcom/game/app/PayWebView$1;
.super Ljava/lang/Object;
.source "PayWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/app/PayWebView;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 50
    invoke-static {}, Lcom/game/app/PayWebView;->startWebviewActvity()V

    .line 51
    return-void
.end method

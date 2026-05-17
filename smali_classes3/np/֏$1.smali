.class final Lnp/֏$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnp/֏;->ހ(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ࢬ:Landroid/app/Activity;

.field final synthetic ೱ:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnp/֏$1;->ࢬ:Landroid/app/Activity;

    iput-object p2, p0, Lnp/֏$1;->ೱ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lnp/֏$1;->ࢬ:Landroid/app/Activity;

    iget-object p2, p0, Lnp/֏$1;->ೱ:Ljava/lang/String;

    invoke-static {p1, p2}, Lnp/ހ;->֏(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

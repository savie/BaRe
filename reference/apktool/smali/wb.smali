.class public final Lwb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgf3;


# instance fields
.field public final synthetic a:Lwz5;


# direct methods
.method public constructor <init>(Lwz5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb;->a:Lwz5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    const-string v0, "app_in_background"

    .line 2
    .line 3
    iget-object p0, p0, Lwb;->a:Lwz5;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lwz5;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Lwz5;->h(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

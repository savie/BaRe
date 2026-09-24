.class public final Lqc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lya2;


# instance fields
.field public final a:Lm35;


# direct methods
.method public constructor <init>(Lm35;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqc4;->a:Lm35;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lza2;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    new-instance v0, Lrb;

    .line 4
    .line 5
    iget-object p0, p0, Lqc4;->a:Lm35;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0}, Lrb;-><init>(Ljava/io/InputStream;Lm35;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

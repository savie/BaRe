.class public final Lid4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw23;
.implements Ld09;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lid4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Ljava/lang/Object;)Lid4;
    .locals 1

    .line 1
    new-instance v0, Lid4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lid4;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string p0, "instance cannot be null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lid4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lid4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

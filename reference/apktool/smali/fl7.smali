.class public final Lfl7;
.super Ljavax/el/ELContext;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/el/ELContext;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfl7;->a:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Lel7;

    .line 7
    .line 8
    invoke-direct {p1}, Lel7;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ldl7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Ldl7;-><init>(Lfl7;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljavax/el/BeanELResolver;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-direct {p0, p1}, Ljavax/el/BeanELResolver;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

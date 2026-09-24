.class public final synthetic Lt3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/TimeZone;

.field public final synthetic c:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lt33;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lt3;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lt3;->b:Ljava/util/TimeZone;

    .line 7
    .line 8
    iput-object p4, p0, Lt3;->c:Ljava/util/Locale;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lu3;

    .line 2
    .line 3
    new-instance p1, Lu33;

    .line 4
    .line 5
    iget-object v0, p0, Lt3;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lt3;->b:Ljava/util/TimeZone;

    .line 8
    .line 9
    iget-object p0, p0, Lt3;->c:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p0}, Lu33;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

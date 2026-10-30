---
layout: post
title: "What is software archaeology?"
description: "Software archaeology, explained: what the craft is, why a codebase is a dig site and why the interpretation stays a human matter."
lead: "Code remembers everything and asks nothing in return. When the makers are gone, someone has to dig. That job has a name."
author: Christophe VG
permalink: /blog/what-is-software-archaeology
---

These days, every organization runs on software. Unfortunately, nobody 
fully understands all of it anymore.
Its makers have moved on, its documentation describes a system that no
longer exists and every meeting about it ends in war stories. Not legacy
as in old. Legacy as in: nobody can say what it actually does.

So the knowledge went where knowledge like that always goes: into the code.
The code remembers everything. Every workaround, every hotfix, every
convention nobody agreed on but everybody followed. It does not lie.
But it does not volunteer the truth either. Someone has to go and get it.

## Why archaeology?

When a site's history needs to be recovered from what lies in the ground,
you call an archaeologist: the builders are gone, the records are
incomplete and the only honest source is the evidence itself.

A codebase abandoned by its makers is exactly that situation. You cannot
interview the authors, the requirements were never written down or the
confluence page died with the last reorganisation. Yet, the system is still
running, so the truth about it is entirely in the ground. The term
"software archaeology" has surfaced in our industry many times over the
years and for good reason. Once you take the situation seriously, the
metaphor turns out not to be a metaphor at all. It is a working method.

## The layers

Software is not written. Software accumulates.

First version, then the first compromise, then the migrations, the
framework upgrade nobody asked for, the hotfix at 3am, three generations of
coding conventions. Each of these is a stratum and each has something to
tell about intent. The first version tells you what the system was born
to do. The migrations tell you what reality demanded. The hotfixes tell
you exactly where it hurt.

Like a true archaeologist, a reader of code should start from the bottom up. By
examining the oldest layers first, the original intent becomes clear. Starting 
with the newest code is like trying to understand a site by only looking at the 
surface sediment.

## The craft

The craft has a small number of hard rules, learned the hard way:

1. **Dig before you interpret.** Record the find, with the exact place it
   came from, before any theory about it. An interpretation without its
   evidence is folklore.
2. **Read the layers in order.** Oldest evidence first, because newer
   layers explain older ones, never the reverse.
3. **One finding is one fact.** Defined, classified, anchored to the exact
   place in the code that proves it. If it cannot be pointed at, it is not
   a finding.
4. **Ask the locals.** Code does not remember everything, people do. The
   decisions taken, the reasons forgotten, the knowledge that only lives in
   heads: ask and check every answer against the ground.
5. **Read in the shadows.** The finds that decide projects are rarely on
   the happy path. They hide in the quirks, the conventions, the
   sensitivities, in everything a first pass would skim past. A dig that
   stops at the architecture has not earned its fee.

These principles have guided me throughout my entire career, frequently surfacing 
during manual analysis projects. The fifth rule always felt like low-hanging fruit that 
was just out of reach, tantalizingly close, yet difficult to attain. My journey into 
agentic workflows revealed the true power of agents. By making exhaustive data capture 
feasible, they make it possible to look everywhere at once. This comprehensive view brought a 
long-known truth into focus: so much valuable insight hides beyond the happy path and 
that is where the true worth of a good analysis lies.

## Where the machines come in

For twenty-five years, the dig was the analyst's own labour. Digging through source 
code, tracing data flows, cross-referencing modules, writing it all down. Honest work, 
and slow, which is why most organizations never had the analysis at all: by the time it 
would be finished, the codebase had moved on.

That part of the craft is now machine work. Agents read exhaustively and
tirelessly, at a pace no human team matches, and they never skim. But the
craft stays human, because the other part of the job, deciding what a find
means, is an act of judgement. The division of labour is simple: machines
deliver the input for human consumption. Humans interpret, validate and
decide. Archaeology was never about the digging. It was about what the
finds mean.

## What a dig produces

Done properly, a dig produces a validated baseline analysis: the business
essence of the system in prose a human can actually read. The actors, the
processes, the core concepts, the business rules, the boundaries of the
system. Every fact anchored to the exact line of code that proves it, all
of it interlinked like a wiki around that one source of truth.

And beyond the happy path: the issues, the hotspots, the quirks and the
conventions. The places where the real costs of a system live.

## The bottom line

An analysis is never finished and never complete and any analyst who
claims otherwise is selling you something. A baseline, validated and
traceable, is the honest product: the point from which human judgement
becomes the work, instead of code reading standing in front of it.

That is the craft in one sentence: uncovering the essence and keeping it
alive. The name Archiku, archaeology plus haiku, is the same idea: complex
code, distilled until it can be read again.

If you want to see a dig instead of reading about one, [the Financials
case study](/case-study/) walks through a real one from codebase to the actual [browseable functional analysis](/case-study/financials).

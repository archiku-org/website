---
layout: post
title: "The cost of software archaeology"
description: "What a functional analysis really costs, measured: the research-backed rates, the arithmetic on a real 13K SLOC app and why the jumpstart, not the automation, is the promise."
lead: "Knowing what your software does is expensive because reading code is slow. Here is the arithmetic, with the research on the table, and what it means for the first decision you need to make."
author: Christophe VG
permalink: /blog/the-cost-of-software-archaeology
---

Let me start with the uncomfortable truth: to know what your software
does, somebody has to read it. All of it. At least once.

Nothing in our industry gets around that. Not documentation (it describes
yesterday), not code metrics (they count, they do not understand), not a
demo (demos show the happy path). The understanding lives in the code and
the code has to be read. The honest question is what that costs and the
even more interesting one is what can honestly be done about it. This post
is the arithmetic, laid out with all its assumptions, on a run you can
check.

## The going rates

Four numbers govern the cost of any human analysis:

- **Reading code: about 200 lines per hour.** Reading code for
  understanding is deep work, not skimming: the reader traces data flows
  and reconstructs intent as they go. Published ranges for documented code
  sit at 200 to 250 lines per hour and slower for undocumented or complex
  code.
- **Reading prose: about 550 lines per hour.** Written analysis reads an
  order of magnitude faster than the code it describes. This gap is the
  whole point of the exercise and we will come back to it.
- **Writing: about 10 words per minute.** A functional analysis is not a
  transcript, it is a composed document. Published writing-speed bands for
  technical specification work sit at 5 to 15 words per minute.
- **Focus: about 70%.** Knowledge workers do not get eight productive
  hours a day. Microsoft Research tracked 5,971 professional developers
  ("[Today was a Good Day](https://www.microsoft.com/en-us/research/wp-content/uploads/2019/04/devtime-preprint-TSE19.pdf)", Meyer et al.) and found that deep, uninterrupted
  focus tops out around four hours per day before comprehension collapses.
  RescueTime's workplace benchmarks, built on 185 million tracked hours,
  put average net focus time near 2 hours 48 minutes a day. The US Bureau
  of Labor Statistics has the cleanest ceiling: about 75% utilization
  under ideal conditions. I use 70% in the arithmetic below.

> These are mid-bands, not best cases and if anything they are generous to
the human analyst. 

## Twelve days, measured

Now apply the rates to a real application: the Financials App, the
codebase of our [case study](/case-study/). About 13K lines of source in
total, 11,185 of them code. The question: what does one seasoned
functional analyst need to produce a full functional analysis document of
6,376 words?

| act | volume | rate | elapsed (70% focus) |
|---|---:|---:|---:|
| read the code | 11,185 lines | 200 lines/h | 79h 54m |
| read the docs | 827 lines | 550 lines/h | 2h 09m |
| write the report | 6,376 words | 10 wpm | 15h 11m |
| **total** | | | **97h 13m** |

That is **12.2 man-days** of elapsed analyst time, of which about ten days
is one activity: reading the code.

Tune the assumptions by 20% in any direction and the conclusion barely
moves. The analysis of a real application costs weeks of analyst time and
most of those weeks are the reading. This is also why most organizations
simply never have one written: by the time the analyst finishes, the
system has moved on.

## Two days, also measured

That same analysis was produced by Archiku in two days. The client-side
cost: two analyst-days.

That is a factor of about six in time _and_ in cost. It is not a
marketing number: it is the arithmetic above, applied to a run you can
read in full, findings and all, in the case study.

Here is the part I find even more interesting. Inside those two days, our
team of agents performed what would cost a human analyst **32.8 working
days**. Most of that was not reading and not writing. It was checking:
ten specialist agents produced, re-read and challenged each other's
findings across multiple passes before anything was allowed near a human.

What looks like a six-fold gain hides a second gain: our multi-pass review
pipeline has a visible cost in the logs, yet one that doesn't reach the surface.
On this run it amounted to about a month and a half of human-equivalent checking
work inside the delivery window. This multi-agent approach is what makes the quality
of the analysis at least on par with the human effort, yet at a fraction of the
time and cost.

## The part that stays human

Fast is not the actual promise. The jumpstart is.

The analysis Archiku delivers reads in about an hour. It is prose, about
550 lines of it and that was really a statistical coincidence. Your analysis can turn out bigger or smaller.

The full set of facts behind the report, every fact
interlinked with its evidence, reads in about two to three. Your experts start
their work with an hour of prose reading instead of ten days of digging through code,
roughly five times sooner at the point where judgement pays off
and from there the analysis is theirs: to validate, to extend, to own.
Nobody hands software to a machine and lets go of the conclusions. The
machines dig, the humans decide.

## What we do not claim

No complete analysis. No correct analysis. Agents make mistakes, carry
bias and deliver a good or less good analysis depending on the day
exactly like humans do, only faster. What the cross-checking, the
structural validation and the line-cited findings buy you is not certainty.
It is a head start you can afford: a big analysis investment that becomes
doable at the start of a decision instead of being postponed to never.

Faster, cheaper initial decisions. That is the promise, and the [Financials
case study](/case-study/) is the measurement behind it, including the
[full analysis](/case-study/financials/reports/functional-analysis/) as it
was delivered.

<center>
  <img src="/assets/img/value-timeline.png" class="img-fluid" alt="Timeline comparison. The human analyst needs about twelve working days before a decision can be made. Archiku delivers in two days.">
</center>

---

*Reading and focus figures from published research and industry benchmarks:
Microsoft Research, Meyer et al., "[Today was a Good Day](https://www.microsoft.com/en-us/research/wp-content/uploads/2019/04/devtime-preprint-TSE19.pdf): The Daily Life of Software Developers"; RescueTime Workplace Productivity Report; US Bureau
of Labor Statistics, American Time Use Survey. Codebase and workload
figures are measurements of the Financials App run, shown in full in the
case study.*
